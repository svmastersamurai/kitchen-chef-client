# `kitchen-chef-client`

## Motivation

In our environment cookbook developers have to support mutliple platforms. In lieu
of having a local checkout of development cookbooks most engineers leverage our
[taste-tester tool](https://github.com/facebook/taste-tester) to upload their changes
and then converge against their development server.

I seem to recall older versions of `test-kitchen` having the ability to converge
using `chef-client` directly, but newer versions seem to have `--local-mode` option
enabled. Everything else in the boilerplate `chef_zero` provider *except* this works
very well for us to define a `kitchen.yml` to test our changes!

## What Does It Do?

Monkey patches the behavior of appending `--local-mode` out of the `ChefZero` provider.

Everything else you know and love about the `ChefZero` provider is untouched.

## Usage

Add the provisioner to your kitchen.yml file:

```yaml
...
provisioner:
    name: chef_client
...
```

Use `bundle` to run it or install it with `gem install kitchen-chef-client`.

You should see kitchen listed as a provider when using `kitchen list`:

```shell
Instance    Driver   Provisioner  Verifier  Transport  Last Action    Last Error
test-hello  Vagrant  ChefClient   Busser    Ssh        <Not Created>  <None>
```

Continue to use `kitchen` as you would before!