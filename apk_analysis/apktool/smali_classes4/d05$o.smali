.class public abstract enum Ld05$o;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ld05$o;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ld05$o;

.field public static final enum STRONG:Ld05$o;

.field public static final enum WEAK:Ld05$o;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ld05$o$a;

    invoke-direct {v0}, Ld05$o$a;-><init>()V

    sput-object v0, Ld05$o;->STRONG:Ld05$o;

    new-instance v1, Ld05$o$b;

    invoke-direct {v1}, Ld05$o$b;-><init>()V

    sput-object v1, Ld05$o;->WEAK:Ld05$o;

    const/4 v2, 0x2

    new-array v2, v2, [Ld05$o;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Ld05$o;->$VALUES:[Ld05$o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Ld05$o;
    .locals 1

    const-class v0, Ld05$o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld05$o;

    return-object p0
.end method

.method public static values()[Ld05$o;
    .locals 1

    sget-object v0, Ld05$o;->$VALUES:[Ld05$o;

    invoke-virtual {v0}, [Ld05$o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld05$o;

    return-object v0
.end method


# virtual methods
.method public abstract a()Ln03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln03<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
