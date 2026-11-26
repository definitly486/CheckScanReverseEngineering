.class public final Lnz6$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(I)Lnz6;
    .locals 1

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_5

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_4

    const/16 v0, 0xcc

    if-eq p0, v0, :cond_3

    const/16 v0, 0x190

    if-eq p0, v0, :cond_2

    const/16 v0, 0x199

    if-eq p0, v0, :cond_1

    const/16 v0, 0x19c

    if-eq p0, v0, :cond_0

    sget-object p0, Lnz6;->FNS_NOT_RESPONDING:Lnz6;

    return-object p0

    :cond_0
    sget-object p0, Lnz6;->INVALID:Lnz6;

    return-object p0

    :cond_1
    sget-object p0, Lnz6;->ALREADY_SCANNED:Lnz6;

    return-object p0

    :cond_2
    sget-object p0, Lnz6;->NOT_CORRECT_FORMAT:Lnz6;

    return-object p0

    :cond_3
    sget-object p0, Lnz6;->FNS_NOT_RESPONDING:Lnz6;

    return-object p0

    :cond_4
    sget-object p0, Lnz6;->CHEQUE_RECEIVED:Lnz6;

    return-object p0

    :cond_5
    sget-object p0, Lnz6;->CHEQUE_NO_SHOP_RECEIVED:Lnz6;

    return-object p0
.end method
