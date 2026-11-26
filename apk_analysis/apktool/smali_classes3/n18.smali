.class public final Ln18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lm18$c$a;


# direct methods
.method public constructor <init>(Lm18$c$a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln18;->c:Lm18$c$a;

    iput-boolean p2, p0, Ln18;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Leb9;->a()V

    iget-object v0, p0, Ln18;->c:Lm18$c$a;

    iget-object v0, v0, Lm18$c$a;->a:Lm18$c;

    iget-boolean v1, v0, Lm18$c;->a:Z

    iget-boolean p0, p0, Ln18;->b:Z

    iput-boolean p0, v0, Lm18$c;->a:Z

    if-eq v1, p0, :cond_0

    iget-object v0, v0, Lm18$c;->b:Lm18$b;

    invoke-virtual {v0, p0}, Lm18$b;->a(Z)V

    :cond_0
    return-void
.end method
