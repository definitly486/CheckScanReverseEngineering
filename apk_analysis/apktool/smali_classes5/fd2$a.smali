.class public final synthetic Lfd2$a;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfd2;->a()Lvi3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqm3;",
        "Lnl3<",
        "TTarget;",
        "Led2;",
        ">;"
    }
.end annotation


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lqy0;->receiver:Ljava/lang/Object;

    check-cast p0, Ld3;

    invoke-interface {p0, p1}, Ld3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Led2;

    return-object p0
.end method
