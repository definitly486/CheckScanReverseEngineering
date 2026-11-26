.class public final synthetic Lcb9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lnr7;

.field public final synthetic c:Ljava/lang/Runnable;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lnr7;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcb9;->b:Lnr7;

    iput-object p2, p0, Lcb9;->c:Ljava/lang/Runnable;

    iput-object p3, p0, Lcb9;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcb9;->c:Ljava/lang/Runnable;

    iget-object v1, p0, Lcb9;->d:Ljava/lang/Object;

    iget-object p0, p0, Lcb9;->b:Lnr7;

    invoke-static {p0, v0, v1}, Landroidx/media3/common/util/Util;->a(Lnr7;Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method
