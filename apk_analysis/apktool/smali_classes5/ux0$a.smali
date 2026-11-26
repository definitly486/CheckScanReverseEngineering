.class public final Lux0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lux0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lb37;Lz47;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lz47;->e:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x19a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x19e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1f5

    if-eq v0, v1, :cond_1

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_1

    const/16 v1, 0x133

    if-eq v0, v1, :cond_0

    const/16 v1, 0x134

    if-eq v0, v1, :cond_1

    const/16 v1, 0x194

    if-eq v0, v1, :cond_1

    const/16 v1, 0x195

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v0, "Expires"

    invoke-static {p1, v0}, Lz47;->n(Lz47;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lz47;->m()Lmx0;

    move-result-object v0

    iget v0, v0, Lmx0;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lz47;->m()Lmx0;

    move-result-object v0

    iget-boolean v0, v0, Lmx0;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lz47;->m()Lmx0;

    move-result-object v0

    iget-boolean v0, v0, Lmx0;->e:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :pswitch_1
    invoke-virtual {p1}, Lz47;->m()Lmx0;

    move-result-object p1

    iget-boolean p1, p1, Lmx0;->b:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lb37;->f:Lmx0;

    if-nez p1, :cond_2

    sget p1, Lmx0;->n:I

    iget-object p1, p0, Lb37;->c:Ljv3;

    invoke-static {p1}, Lmx0$b;->a(Ljv3;)Lmx0;

    move-result-object p1

    iput-object p1, p0, Lb37;->f:Lmx0;

    :cond_2
    iget-boolean p0, p1, Lmx0;->b:Z

    if-nez p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
