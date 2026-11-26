.class final Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "androidx.privacysandbox.ads.adservices.appsetid.AppSetIdManagerImplCommon"
    f = "AppSetIdManagerImplCommon.kt"
    l = {
        0x26
    }
    m = "getAppSetId$suspendImpl"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;->getAppSetId$suspendImpl(Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;


# direct methods
.method public constructor <init>(Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;",
            "Le02<",
            "-",
            "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;->this$0:Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;->label:I

    iget-object p1, p0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;->this$0:Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;

    invoke-static {p1, p0}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;->getAppSetId$suspendImpl(Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
