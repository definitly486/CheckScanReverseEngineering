.class public final Lri9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcl4;

.field public static final b:Lcl4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lpo4;->NONE:Lpo4;

    sget-object v1, Lri9$a;->f:Lri9$a;

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v1

    sput-object v1, Lri9;->a:Lcl4;

    sget-object v1, Lri9$b;->f:Lri9$b;

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    sput-object v0, Lri9;->b:Lcl4;

    return-void
.end method
