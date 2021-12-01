using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PaymentApp.Data;
using PaymentApp.Models;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;

namespace PaymentApp.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
    public class PaymentController : ControllerBase
    {
        private readonly ApiDbContext _context;

        public PaymentController(ApiDbContext context)
        {
            _context = context;
        }

        [HttpGet(Name = "Get All")]
        public async Task<IActionResult> GetPayments()
        {
            var payment = await _context.Payment.ToListAsync();

            return Ok(payment);
        }

        [HttpGet("{id}", Name = "Get Payment")]
        public async Task<IActionResult> GetPaymentDetail(int id)
        {
            var payment = await _context.Payment.FirstOrDefaultAsync(x => x.PaymentDetailId == id);

            if (payment == null)
                return NotFound();

            return Ok(payment);
        }

        [HttpPost]
        public async Task<IActionResult> CreatePayment(PaymentData data)
        {
            if (ModelState.IsValid)
            {
                await _context.Payment.AddAsync(data);
                await _context.SaveChangesAsync();

                return new JsonResult("Payment Data Created!");
            }

            return new JsonResult("Something went wrong") {StatusCode = 500};
        }

        

        [HttpPut("{id}")]
        public async Task<IActionResult> UpdatePayment(int id, PaymentData item)
        {
            if (id != item.PaymentDetailId)
                return BadRequest();

            var existPayment = await _context.Payment.FirstOrDefaultAsync(x => x.PaymentDetailId == id);

            if (existPayment == null)
                return NotFound();

            existPayment.CardOwnerName = item.CardOwnerName;
            existPayment.CardNumber = item.CardNumber;
            existPayment.ExpirationDate = item.ExpirationDate;
            existPayment.SecurityCode = item.SecurityCode;

            await _context.SaveChangesAsync();
            return new JsonResult("Payment Data Update Success") { StatusCode = 200 };
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeletePayment(int id)
        {
            var existPayment = await _context.Payment.FirstOrDefaultAsync(x => x.PaymentDetailId == id);
            if (existPayment == null)
                return NotFound();
            _context.Payment.Remove(existPayment);
            await _context.SaveChangesAsync();

            return new JsonResult("Payment Data Has Been Deleted!");
        }
    }
}
