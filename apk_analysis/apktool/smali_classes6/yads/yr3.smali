.class public final Lyads/yr3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lws6;


# instance fields
.field public final a:Lcl4;


# direct methods
.method public constructor <init>(Lll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object p1

    iput-object p1, p0, Lyads/yr3;->a:Lcl4;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lyads/yr3;->a:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
