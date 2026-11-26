.class public final enum Lyk6$d$a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyk6$d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lyk6$d$a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lyk6$d$a$a;

.field public static final enum CLOSE:Lyk6$d$a$a;

.field public static final enum CONTINUE:Lyk6$d$a$a;

.field public static final enum END:Lyk6$d$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lyk6$d$a$a;

    const-string v1, "CLOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyk6$d$a$a;->CLOSE:Lyk6$d$a$a;

    new-instance v1, Lyk6$d$a$a;

    const-string v2, "END"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyk6$d$a$a;->END:Lyk6$d$a$a;

    new-instance v2, Lyk6$d$a$a;

    const-string v3, "CONTINUE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lyk6$d$a$a;->CONTINUE:Lyk6$d$a$a;

    filled-new-array {v0, v1, v2}, [Lyk6$d$a$a;

    move-result-object v0

    sput-object v0, Lyk6$d$a$a;->$VALUES:[Lyk6$d$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lyk6$d$a$a;
    .locals 1

    const-class v0, Lyk6$d$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyk6$d$a$a;

    return-object p0
.end method

.method public static values()[Lyk6$d$a$a;
    .locals 1

    sget-object v0, Lyk6$d$a$a;->$VALUES:[Lyk6$d$a$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyk6$d$a$a;

    return-object v0
.end method
