.class public final enum Lyads/kz4;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lyads/kz4;",
        ">;"
    }
.end annotation

.annotation runtime Lup7;
.end annotation


# static fields
.field public static final Companion:Lyads/jz4;

.field public static final b:Lcl4;

.field public static final enum c:Lyads/kz4;

.field public static final enum d:Lyads/kz4;

.field public static final synthetic e:[Lyads/kz4;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/kz4;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/kz4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyads/kz4;->c:Lyads/kz4;

    new-instance v1, Lyads/kz4;

    const-string v2, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lyads/kz4;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyads/kz4;->d:Lyads/kz4;

    filled-new-array {v0, v1}, [Lyads/kz4;

    move-result-object v0

    sput-object v0, Lyads/kz4;->e:[Lyads/kz4;

    new-instance v0, Lyads/jz4;

    invoke-direct {v0}, Lyads/jz4;-><init>()V

    sput-object v0, Lyads/kz4;->Companion:Lyads/jz4;

    sget-object v0, Lpo4;->PUBLICATION:Lpo4;

    new-instance v1, Lkk5;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lkk5;-><init>(I)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    sput-object v0, Lyads/kz4;->b:Lcl4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic a()Ldf4;
    .locals 4

    invoke-static {}, Lyads/kz4;->values()[Lyads/kz4;

    move-result-object v0

    const-string v1, "success"

    const-string v2, "error"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    filled-new-array {v2, v2}, [[Ljava/lang/annotation/Annotation;

    move-result-object v2

    const-string v3, "com.monetization.ads.base.model.mediation.prefetch.PrefetchedMediationResultStatus"

    invoke-static {v3, v0, v1, v2}, Le;->c(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Ll03;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/kz4;
    .locals 1

    const-class v0, Lyads/kz4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/kz4;

    return-object p0
.end method

.method public static values()[Lyads/kz4;
    .locals 1

    sget-object v0, Lyads/kz4;->e:[Lyads/kz4;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/kz4;

    return-object v0
.end method
