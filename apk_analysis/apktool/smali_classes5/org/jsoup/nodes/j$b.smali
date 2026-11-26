.class public final enum Lorg/jsoup/nodes/j$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jsoup/nodes/j$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jsoup/nodes/j$b;

.field public static final enum ascii:Lorg/jsoup/nodes/j$b;

.field public static final enum fallback:Lorg/jsoup/nodes/j$b;

.field public static final enum utf:Lorg/jsoup/nodes/j$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/jsoup/nodes/j$b;

    const-string v1, "ascii"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/nodes/j$b;->ascii:Lorg/jsoup/nodes/j$b;

    new-instance v1, Lorg/jsoup/nodes/j$b;

    const-string v2, "utf"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jsoup/nodes/j$b;->utf:Lorg/jsoup/nodes/j$b;

    new-instance v2, Lorg/jsoup/nodes/j$b;

    const-string v3, "fallback"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/nodes/j$b;->fallback:Lorg/jsoup/nodes/j$b;

    filled-new-array {v0, v1, v2}, [Lorg/jsoup/nodes/j$b;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/j$b;->$VALUES:[Lorg/jsoup/nodes/j$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/nodes/j$b;
    .locals 1

    const-class v0, Lorg/jsoup/nodes/j$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/j$b;

    return-object p0
.end method

.method public static values()[Lorg/jsoup/nodes/j$b;
    .locals 1

    sget-object v0, Lorg/jsoup/nodes/j$b;->$VALUES:[Lorg/jsoup/nodes/j$b;

    invoke-virtual {v0}, [Lorg/jsoup/nodes/j$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/nodes/j$b;

    return-object v0
.end method
