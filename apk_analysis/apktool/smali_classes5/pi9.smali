.class public final Lpi9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcl4;

.field public static final b:Lcl4;

.field public static final c:Lcl4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lpo4;->NONE:Lpo4;

    sget-object v1, Lpi9$b;->f:Lpi9$b;

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v1

    sput-object v1, Lpi9;->a:Lcl4;

    sget-object v1, Lpi9$c;->f:Lpi9$c;

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v1

    sput-object v1, Lpi9;->b:Lcl4;

    sget-object v1, Lpi9$a;->f:Lpi9$a;

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    sput-object v0, Lpi9;->c:Lcl4;

    return-void
.end method
