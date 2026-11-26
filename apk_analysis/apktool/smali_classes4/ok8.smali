.class public final synthetic Lok8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Landroid/util/DisplayMetrics;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Landroid/util/DisplayMetrics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lok8;->b:Landroid/app/Activity;

    iput-object p2, p0, Lok8;->c:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lok8;->b:Landroid/app/Activity;

    iget-object p0, p0, Lok8;->c:Landroid/util/DisplayMetrics;

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyPluginAPI;->a(Landroid/app/Activity;Landroid/util/DisplayMetrics;)V

    return-void
.end method
