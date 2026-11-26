.class public final enum Lkd$q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkd$q;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkd$q;

.field public static final enum OpenForm:Lkd$q;

.field public static final enum RegisterForm:Lkd$q;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkd$q;

    const-string v1, "OpenForm"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkd$q;->OpenForm:Lkd$q;

    new-instance v1, Lkd$q;

    const-string v2, "RegisterForm"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkd$q;->RegisterForm:Lkd$q;

    filled-new-array {v0, v1}, [Lkd$q;

    move-result-object v0

    sput-object v0, Lkd$q;->$VALUES:[Lkd$q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lkd$q;
    .locals 1

    const-class v0, Lkd$q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkd$q;

    return-object p0
.end method

.method public static values()[Lkd$q;
    .locals 1

    sget-object v0, Lkd$q;->$VALUES:[Lkd$q;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkd$q;

    return-object v0
.end method
