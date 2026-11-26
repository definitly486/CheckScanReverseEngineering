.class public abstract enum Lax8;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lbx8;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lax8;",
        ">;",
        "Lbx8;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lax8;

.field public static final enum BIG_DECIMAL:Lax8;

.field public static final enum DOUBLE:Lax8;

.field public static final enum LAZILY_PARSED_NUMBER:Lax8;

.field public static final enum LONG_OR_DOUBLE:Lax8;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lax8$a;

    invoke-direct {v0}, Lax8$a;-><init>()V

    sput-object v0, Lax8;->DOUBLE:Lax8;

    new-instance v1, Lax8$b;

    invoke-direct {v1}, Lax8$b;-><init>()V

    sput-object v1, Lax8;->LAZILY_PARSED_NUMBER:Lax8;

    new-instance v2, Lax8$c;

    invoke-direct {v2}, Lax8$c;-><init>()V

    sput-object v2, Lax8;->LONG_OR_DOUBLE:Lax8;

    new-instance v3, Lax8$d;

    invoke-direct {v3}, Lax8$d;-><init>()V

    sput-object v3, Lax8;->BIG_DECIMAL:Lax8;

    const/4 v4, 0x4

    new-array v4, v4, [Lax8;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    sput-object v4, Lax8;->$VALUES:[Lax8;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lax8;
    .locals 1

    const-class v0, Lax8;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lax8;

    return-object p0
.end method

.method public static values()[Lax8;
    .locals 1

    sget-object v0, Lax8;->$VALUES:[Lax8;

    invoke-virtual {v0}, [Lax8;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lax8;

    return-object v0
.end method
