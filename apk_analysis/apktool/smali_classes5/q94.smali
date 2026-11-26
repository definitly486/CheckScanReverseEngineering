.class public final Lq94;
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

    iput-object p1, p0, Lq94;->b:Lp94;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x0

    iget-object p0, p0, Lq94;->b:Lp94;

    iput-object v0, p0, Lp94;->r:Lch8$c;

    iget-object v0, p0, Lp94;->j:Ln91;

    sget-object v1, Ln91$a;->INFO:Ln91$a;

    const-string v2, "CONNECTING after backoff"

    invoke-virtual {v0, v1, v2}, Ln91;->a(Ln91$a;Ljava/lang/String;)V

    sget-object v0, Lcx1;->CONNECTING:Lcx1;

    invoke-virtual {p0, v0}, Lp94;->f(Lcx1;)V

    invoke-virtual {p0}, Lp94;->i()V

    return-void
.end method
