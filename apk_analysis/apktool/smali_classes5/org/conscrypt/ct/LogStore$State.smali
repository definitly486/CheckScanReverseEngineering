.class public final enum Lorg/conscrypt/ct/LogStore$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/ct/LogStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/conscrypt/ct/LogStore$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/conscrypt/ct/LogStore$State;

.field public static final enum COMPLIANT:Lorg/conscrypt/ct/LogStore$State;

.field public static final enum LOADED:Lorg/conscrypt/ct/LogStore$State;

.field public static final enum MALFORMED:Lorg/conscrypt/ct/LogStore$State;

.field public static final enum NON_COMPLIANT:Lorg/conscrypt/ct/LogStore$State;

.field public static final enum NOT_FOUND:Lorg/conscrypt/ct/LogStore$State;

.field public static final enum UNINITIALIZED:Lorg/conscrypt/ct/LogStore$State;


# direct methods
.method private static synthetic $values()[Lorg/conscrypt/ct/LogStore$State;
    .locals 6

    sget-object v0, Lorg/conscrypt/ct/LogStore$State;->UNINITIALIZED:Lorg/conscrypt/ct/LogStore$State;

    sget-object v1, Lorg/conscrypt/ct/LogStore$State;->NOT_FOUND:Lorg/conscrypt/ct/LogStore$State;

    sget-object v2, Lorg/conscrypt/ct/LogStore$State;->MALFORMED:Lorg/conscrypt/ct/LogStore$State;

    sget-object v3, Lorg/conscrypt/ct/LogStore$State;->LOADED:Lorg/conscrypt/ct/LogStore$State;

    sget-object v4, Lorg/conscrypt/ct/LogStore$State;->COMPLIANT:Lorg/conscrypt/ct/LogStore$State;

    sget-object v5, Lorg/conscrypt/ct/LogStore$State;->NON_COMPLIANT:Lorg/conscrypt/ct/LogStore$State;

    filled-new-array/range {v0 .. v5}, [Lorg/conscrypt/ct/LogStore$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/conscrypt/ct/LogStore$State;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/ct/LogStore$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/conscrypt/ct/LogStore$State;->UNINITIALIZED:Lorg/conscrypt/ct/LogStore$State;

    new-instance v0, Lorg/conscrypt/ct/LogStore$State;

    const-string v1, "NOT_FOUND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/ct/LogStore$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/conscrypt/ct/LogStore$State;->NOT_FOUND:Lorg/conscrypt/ct/LogStore$State;

    new-instance v0, Lorg/conscrypt/ct/LogStore$State;

    const-string v1, "MALFORMED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/ct/LogStore$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/conscrypt/ct/LogStore$State;->MALFORMED:Lorg/conscrypt/ct/LogStore$State;

    new-instance v0, Lorg/conscrypt/ct/LogStore$State;

    const-string v1, "LOADED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/ct/LogStore$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/conscrypt/ct/LogStore$State;->LOADED:Lorg/conscrypt/ct/LogStore$State;

    new-instance v0, Lorg/conscrypt/ct/LogStore$State;

    const-string v1, "COMPLIANT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/ct/LogStore$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/conscrypt/ct/LogStore$State;->COMPLIANT:Lorg/conscrypt/ct/LogStore$State;

    new-instance v0, Lorg/conscrypt/ct/LogStore$State;

    const-string v1, "NON_COMPLIANT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/ct/LogStore$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/conscrypt/ct/LogStore$State;->NON_COMPLIANT:Lorg/conscrypt/ct/LogStore$State;

    invoke-static {}, Lorg/conscrypt/ct/LogStore$State;->$values()[Lorg/conscrypt/ct/LogStore$State;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/ct/LogStore$State;->$VALUES:[Lorg/conscrypt/ct/LogStore$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/conscrypt/ct/LogStore$State;
    .locals 1

    const-class v0, Lorg/conscrypt/ct/LogStore$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/conscrypt/ct/LogStore$State;

    return-object p0
.end method

.method public static values()[Lorg/conscrypt/ct/LogStore$State;
    .locals 1

    sget-object v0, Lorg/conscrypt/ct/LogStore$State;->$VALUES:[Lorg/conscrypt/ct/LogStore$State;

    invoke-virtual {v0}, [Lorg/conscrypt/ct/LogStore$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/conscrypt/ct/LogStore$State;

    return-object v0
.end method
