.class public final synthetic Lu11$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;
.implements Lmm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lt11;


# direct methods
.method public constructor <init>(Lt11;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu11$a;->b:Lt11;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/lifecycle/Observer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lmm3;

    if-eqz v0, :cond_1

    check-cast p1, Lmm3;

    invoke-interface {p1}, Lmm3;->getFunctionDelegate()Lcm3;

    move-result-object p1

    iget-object p0, p0, Lu11$a;->b:Lt11;

    if-eq p0, p1, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final getFunctionDelegate()Lcm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcm3<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lu11$a;->b:Lt11;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lu11$a;->b:Lt11;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lu11$a;->b:Lt11;

    invoke-virtual {p0, p1}, Lt11;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
