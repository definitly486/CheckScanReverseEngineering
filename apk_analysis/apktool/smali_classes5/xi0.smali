.class public final Lxi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv47;
.implements Lmq1;


# instance fields
.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lxi0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le47;Lxz5;)Le47;
    .locals 0

    iget-object p0, p0, Lxi0;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/Resources;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p2, Ldl4;

    invoke-direct {p2, p0, p1}, Ldl4;-><init>(Landroid/content/res/Resources;Le47;)V

    return-object p2
.end method

.method public onComplete()V
    .locals 1

    iget-object p0, p0, Lxi0;->b:Ljava/lang/Object;

    check-cast p0, Lc31;

    sget-object v0, Lj59;->a:Lj59;

    invoke-virtual {p0, v0}, Lc31;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lxi0;->b:Ljava/lang/Object;

    check-cast p0, Lc31;

    invoke-static {p1}, Lr57;->a(Ljava/lang/Throwable;)Lk57$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lcp2;)V
    .locals 2

    iget-object p0, p0, Lxi0;->b:Ljava/lang/Object;

    check-cast p0, Lc31;

    new-instance v0, Lom4;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lom4;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lc31;->n(Lnl3;)V

    return-void
.end method
