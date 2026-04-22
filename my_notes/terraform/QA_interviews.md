What are modules in Terraform? (no pint wise)
---
> “Modules in Terraform are reusable blocks of infrastructure code it helps to organize and standardize resource configurations. Instead of defining the same resources multiple times, we group them into a module and reuse it across different environments like dev, staging, and production.
>
> A module is basically a directory containing Terraform configuration files. The main working directory is called the root module, and any reusable components are called child modules. These modules can take input variables to customize behavior and return outputs that can be used by other modules.
>
> We use modules mainly to reduce code duplication, improve maintainability, and enforce best practices across teams. For example, instead of writing EC2, VPC, and security group configurations repeatedly, we can create a module and call it wherever needed with different inputs.”

---

In Terraform, modules are a way to organize and reuse your infrastructure code by grouping related resources together into a single logical unit. Instead of writing the same configuration repeatedly for things like virtual machines, networks, or databases, you define them once inside a module and then call that module wherever you need it.

A module is essentially just a folder that contains Terraform configuration files (`.tf` files). The simplest form is the “root module,” which is the main working directory where you run Terraform commands. But you can also create child modules—separate directories that encapsulate specific functionality, such as creating a VPC, setting up an EC2 instance, or configuring a load balancer. These child modules can be reused across different projects or environments.

What makes modules powerful is that they can accept inputs and produce outputs. Inputs (variables) let you customize how the module behaves—for example, choosing instance types or region—while outputs allow you to expose values like IP addresses or resource IDs for use elsewhere. This makes modules flexible and adaptable without changing their internal code.

Modules are commonly used to enforce consistency and best practices. If a team defines a standard way to deploy infrastructure, they can wrap that logic in a module and ensure everyone uses it the same way. This reduces duplication, minimizes errors, and makes infrastructure easier to manage at scale.

In practice, instead of writing dozens of resource blocks every time, you simply reference a module and pass the required inputs. Terraform then uses that module to create all the underlying resources, keeping your configuration cleaner, more readable, and easier to maintain.

