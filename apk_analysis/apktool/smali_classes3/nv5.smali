.class public final Lnv5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv83;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv83<",
        "Lb99;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final factory()Lkm5$a;
    .locals 2

    new-instance p0, Lkm5$a;

    new-instance v0, Lfr2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lfr2;-><init>(I)V

    invoke-direct {p0, v0}, Lkm5$a;-><init>(Lfr2;)V

    return-object p0
.end method

.method public final type()Lzk1;
    .locals 0

    const-class p0, Lb99;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    return-object p0
.end method
