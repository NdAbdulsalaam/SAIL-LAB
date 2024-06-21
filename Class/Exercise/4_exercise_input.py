
import math

# make it user interactive
def quad_solver():
    """
    Solves a quadratic equation ax^2 + bx + c = 0 and prints the solutions.

    Args:
        a: Coefficient of the x^2 term.
        b: Coefficient of the x term.
        c: Constant term.
    """
    user_input = input("Enter your equation here: ")
    a, b, c = user_input.split('x')

    try:
        try:
            a, b, c = int(a), int(b[-2:]), int(c)
        except:
            a, b, c = int('1'), int(b[-2:]), int(c)
        discriminant = b**2 - 4 * a * c

        # Check for real or complex solutions based on the discriminant
        if discriminant > 0:
            # Real solutions
            positive_root = (-b + math.sqrt(discriminant)) / (2 * a)
            negative_root = (-b - math.sqrt(discriminant)) / (2 * a)
            print("Answers:")
            print(f"x1 = {positive_root:.4f}, x2 = {negative_root:.4f}")  # Format output for better precision
        elif discriminant == 0:
            # Repeated real root
            form = -b / (2 * a)
            print("Answer:")
            print(f"x = {form:.4f}")  # Format output for better precision
        else:
            # Complex solutions
            print("The equation has no real root. Check your input and try again.")

    except:
        print("Check your input guy")


# Example usage
quad_solver()

# 1x^2+2x+1