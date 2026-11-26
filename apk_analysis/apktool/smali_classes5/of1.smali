.class public final Lof1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljh1;",
        "Lhd1;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lof1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lof1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lof1;->f:Lof1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljh1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljh1;->e()Lhd1;

    move-result-object p0

    return-object p0
.end method
