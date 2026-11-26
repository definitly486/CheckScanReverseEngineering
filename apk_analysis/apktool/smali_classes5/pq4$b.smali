.class public final enum Lpq4$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpq4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpq4$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpq4$b;

.field public static final enum DESTINATION:Lpq4$b;

.field public static final enum LABEL:Lpq4$b;

.field public static final enum PARAGRAPH:Lpq4$b;

.field public static final enum START_DEFINITION:Lpq4$b;

.field public static final enum START_TITLE:Lpq4$b;

.field public static final enum TITLE:Lpq4$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lpq4$b;

    const-string v1, "START_DEFINITION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpq4$b;->START_DEFINITION:Lpq4$b;

    new-instance v1, Lpq4$b;

    const-string v2, "LABEL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lpq4$b;->LABEL:Lpq4$b;

    new-instance v2, Lpq4$b;

    const-string v3, "DESTINATION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lpq4$b;->DESTINATION:Lpq4$b;

    new-instance v3, Lpq4$b;

    const-string v4, "START_TITLE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lpq4$b;->START_TITLE:Lpq4$b;

    new-instance v4, Lpq4$b;

    const-string v5, "TITLE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lpq4$b;->TITLE:Lpq4$b;

    new-instance v5, Lpq4$b;

    const-string v6, "PARAGRAPH"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lpq4$b;->PARAGRAPH:Lpq4$b;

    filled-new-array/range {v0 .. v5}, [Lpq4$b;

    move-result-object v0

    sput-object v0, Lpq4$b;->$VALUES:[Lpq4$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lpq4$b;
    .locals 1

    const-class v0, Lpq4$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpq4$b;

    return-object p0
.end method

.method public static values()[Lpq4$b;
    .locals 1

    sget-object v0, Lpq4$b;->$VALUES:[Lpq4$b;

    invoke-virtual {v0}, [Lpq4$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpq4$b;

    return-object v0
.end method
