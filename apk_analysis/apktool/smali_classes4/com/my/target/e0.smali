.class public final Lcom/my/target/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/text/DecimalFormat;


# instance fields
.field public final a:Lpp9;

.field public final b:Ln4a;

.field public final c:Z

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v0, Lcom/my/target/e0;->e:Ljava/text/DecimalFormat;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method public constructor <init>(Ln4a;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Ln4a;->a:Lpp9;

    iput-object v0, p0, Lcom/my/target/e0;->a:Lpp9;

    iput-object p1, p0, Lcom/my/target/e0;->b:Ln4a;

    iput-boolean p2, p0, Lcom/my/target/e0;->c:Z

    iput-boolean p3, p0, Lcom/my/target/e0;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/my/target/e0;->d:Z

    const-string v1, "header="

    iget-object v2, p0, Lcom/my/target/e0;->a:Lpp9;

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1776

    invoke-virtual {v2, v3, v0}, Lpp9;->a(ILjava/lang/String;)V

    invoke-static {}, Lw4a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "debug-actions-not-ui-thread"

    invoke-virtual {v2, v3, v0}, Lpp9;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "debug-actions-no-vi-supplier"

    invoke-virtual {v2, v3, v0}, Lpp9;->a(ILjava/lang/String;)V

    :cond_1
    :goto_0
    iget-boolean p0, p0, Lcom/my/target/e0;->c:Z

    if-eqz p0, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x1774

    invoke-virtual {v2, p1, p0}, Lpp9;->a(ILjava/lang/String;)V

    const-string p0, "check-callback==null"

    invoke-virtual {v2, p1, p0}, Lpp9;->a(ILjava/lang/String;)V

    :cond_2
    return-void
.end method
