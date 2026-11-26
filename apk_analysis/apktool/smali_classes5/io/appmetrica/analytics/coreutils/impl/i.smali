.class public final Lio/appmetrica/analytics/coreutils/impl/i;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/coreutils/impl/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/coreutils/impl/i;->b:Landroid/content/Intent;

    iput p3, p0, Lio/appmetrica/analytics/coreutils/impl/i;->c:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/impl/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/coreutils/impl/i;->b:Landroid/content/Intent;

    iget p0, p0, Lio/appmetrica/analytics/coreutils/impl/i;->c:I

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method
