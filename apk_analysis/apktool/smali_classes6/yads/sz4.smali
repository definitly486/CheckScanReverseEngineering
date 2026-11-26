.class public final enum Lyads/sz4;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lyads/sz4;",
        ">;"
    }
.end annotation

.annotation runtime Lup7;
.end annotation


# static fields
.field public static final Companion:Lyads/rz4;

.field public static final c:Lcl4;

.field public static final synthetic d:[Lyads/sz4;

.field public static final synthetic e:Lg03;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lyads/sz4;

    const/4 v1, 0x0

    const-string v2, "interstitial"

    const-string v3, "INTERSTITIAL"

    invoke-direct {v0, v3, v1, v2}, Lyads/sz4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lyads/sz4;

    const/4 v2, 0x1

    const-string v3, "rewarded"

    const-string v4, "REWARDED"

    invoke-direct {v1, v4, v2, v3}, Lyads/sz4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lyads/sz4;

    const/4 v3, 0x2

    const-string v4, "appopen"

    const-string v5, "APP_OPEN"

    invoke-direct {v2, v5, v3, v4}, Lyads/sz4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    filled-new-array {v0, v1, v2}, [Lyads/sz4;

    move-result-object v0

    sput-object v0, Lyads/sz4;->d:[Lyads/sz4;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lyads/sz4;->e:Lg03;

    new-instance v0, Lyads/rz4;

    invoke-direct {v0}, Lyads/rz4;-><init>()V

    sput-object v0, Lyads/sz4;->Companion:Lyads/rz4;

    sget-object v0, Lpo4;->PUBLICATION:Lpo4;

    new-instance v1, Lpo;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lpo;-><init>(I)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    sput-object v0, Lyads/sz4;->c:Lcl4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/sz4;->b:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()Ldf4;
    .locals 4

    invoke-static {}, Lyads/sz4;->values()[Lyads/sz4;

    move-result-object v0

    const-string v1, "rewarded"

    const-string v2, "appopen"

    const-string v3, "interstitial"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    filled-new-array {v2, v2, v2}, [[Ljava/lang/annotation/Annotation;

    move-result-object v2

    const-string v3, "com.monetization.ads.core.configuration.model.PreloadFormat"

    invoke-static {v3, v0, v1, v2}, Le;->c(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Ll03;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/sz4;
    .locals 1

    const-class v0, Lyads/sz4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/sz4;

    return-object p0
.end method

.method public static values()[Lyads/sz4;
    .locals 1

    sget-object v0, Lyads/sz4;->d:[Lyads/sz4;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/sz4;

    return-object v0
.end method
