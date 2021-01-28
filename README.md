# Vxtel

To start the project:
  * Install Elixir
    * Up-to-date instructions for installing the latest version of Elixir on any operating system are available at http://elixir-lang.org/install.html
  * Install dependencies with `mix deps.get`
  * Install Node.js dependencies with `npm install` inside the `assets` directory
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

### Project Purpose
> The telephone company VxTel, specialized in national long distance calls, will place a new product on the market called FaleMais.

Normally a VxTel customer can make a call from one city to another by paying a fixed rate per minute, with the price being pre-defined in a list with the DDD codes of origin and destination.

| Origin | Destination | $ / min |
| --- | --- | --- |
| 011 | 016 | 1.90 |
| 016 | 011 | 2.90 |
| 011 | 017 | 1.70 |
| 017 | 011 | 2.70 |
| 011 | 018 | 0.90 |
| 018 | 011 | 1.90 |

With VxTel's new FaleMais product, the customer acquires a plan and can speak for free up to a certain time (in minutes) and only pays for the excess minutes. Excess minutes have an increase of 10% over the normal minute rate. The plans are FaleMais 30 (30 minutes), FaleMais 60 (60 minutes) and FaleMais 120 (120 minutes).

VxTel, concerned with transparency with its customers, wants to provide a page on the web where the customer can calculate the value of the connection. There, the customer can choose the codes of the cities of origin and destination, the time of the call in minutes and choose the FaleMais plan. The system should show two values: (1) the value of the connection with the plane and (2) without the plane. The initial cost of purchasing the plan must be disregarded for this problem. 
