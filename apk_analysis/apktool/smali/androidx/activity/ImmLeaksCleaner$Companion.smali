.class public final Landroidx/activity/ImmLeaksCleaner$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/ImmLeaksCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/ImmLeaksCleaner$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCleaner()Landroidx/activity/ImmLeaksCleaner$Cleaner;
    .locals 0

    invoke-static {}, Landroidx/activity/ImmLeaksCleaner;->access$getCleaner$delegate$cp()Lcl4;

    move-result-object p0

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/activity/ImmLeaksCleaner$Cleaner;

    return-object p0
.end method
