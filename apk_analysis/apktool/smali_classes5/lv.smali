.class public final Llv;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llv$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lxu4;",
        "Lkv$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Llv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Llv;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Llv;->f:Llv;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lxu4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Llv$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    sget-object p0, Lkv$a;->LoggedInFirstTime:Lkv$a;

    return-object p0

    :cond_0
    sget-object p0, Lkv$a;->Error:Lkv$a;

    return-object p0
.end method
