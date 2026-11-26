.class public final Lr94;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lp94;


# direct methods
.method public constructor <init>(Lp94;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr94;->b:Lp94;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr94;->b:Lp94;

    iget-object v0, v0, Lp94;->y:Ldx1;

    iget-object v0, v0, Ldx1;->a:Lcx1;

    sget-object v1, Lcx1;->IDLE:Lcx1;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lr94;->b:Lp94;

    iget-object v0, v0, Lp94;->j:Ln91;

    sget-object v1, Ln91$a;->INFO:Ln91$a;

    const-string v2, "CONNECTING as requested"

    invoke-virtual {v0, v1, v2}, Ln91;->a(Ln91$a;Ljava/lang/String;)V

    iget-object v0, p0, Lr94;->b:Lp94;

    sget-object v1, Lcx1;->CONNECTING:Lcx1;

    invoke-virtual {v0, v1}, Lp94;->f(Lcx1;)V

    iget-object p0, p0, Lr94;->b:Lp94;

    invoke-virtual {p0}, Lp94;->i()V

    :cond_0
    return-void
.end method
