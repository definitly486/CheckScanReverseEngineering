.class public final enum Lyads/z86;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lyads/z86;

.field public static final enum d:Lyads/z86;

.field public static final synthetic e:[Lyads/z86;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lyads/z86;

    const-string v1, "VERIFICATION_REJECTED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lyads/z86;-><init>(IILjava/lang/String;)V

    new-instance v1, Lyads/z86;

    const-string v2, "VERIFICATION_NOT_SUPPORTED"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4, v2}, Lyads/z86;-><init>(IILjava/lang/String;)V

    sput-object v1, Lyads/z86;->c:Lyads/z86;

    new-instance v2, Lyads/z86;

    const/4 v3, 0x3

    const-string v5, "ERROR_RESOURCE_LOAD"

    invoke-direct {v2, v4, v3, v5}, Lyads/z86;-><init>(IILjava/lang/String;)V

    sput-object v2, Lyads/z86;->d:Lyads/z86;

    filled-new-array {v0, v1, v2}, [Lyads/z86;

    move-result-object v0

    sput-object v0, Lyads/z86;->e:[Lyads/z86;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lyads/z86;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/z86;
    .locals 1

    const-class v0, Lyads/z86;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/z86;

    return-object p0
.end method

.method public static values()[Lyads/z86;
    .locals 1

    sget-object v0, Lyads/z86;->e:[Lyads/z86;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/z86;

    return-object v0
.end method
