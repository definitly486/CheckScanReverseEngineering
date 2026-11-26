.class public final enum Lkd$o0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "o0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkd$o0;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkd$o0;

.field public static final enum Bonuses:Lkd$o0;

.field public static final enum Category:Lkd$o0;

.field public static final enum Deeplink:Lkd$o0;

.field public static final enum Search:Lkd$o0;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lkd$o0;

    const-string v1, "Search"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkd$o0;->Search:Lkd$o0;

    new-instance v1, Lkd$o0;

    const-string v2, "Bonuses"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkd$o0;->Bonuses:Lkd$o0;

    new-instance v2, Lkd$o0;

    const-string v3, "Deeplink"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lkd$o0;->Deeplink:Lkd$o0;

    new-instance v3, Lkd$o0;

    const-string v4, "Category"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lkd$o0;->Category:Lkd$o0;

    filled-new-array {v0, v1, v2, v3}, [Lkd$o0;

    move-result-object v0

    sput-object v0, Lkd$o0;->$VALUES:[Lkd$o0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lkd$o0;
    .locals 1

    const-class v0, Lkd$o0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkd$o0;

    return-object p0
.end method

.method public static values()[Lkd$o0;
    .locals 1

    sget-object v0, Lkd$o0;->$VALUES:[Lkd$o0;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkd$o0;

    return-object v0
.end method
