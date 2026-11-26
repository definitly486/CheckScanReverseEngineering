.class public final synthetic Lg11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Landroidx/lifecycle/Observer;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroidx/lifecycle/Observer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg11;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lg11;->c:Landroidx/lifecycle/Observer;

    iput-object p3, p0, Lg11;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lg11;->c:Landroidx/lifecycle/Observer;

    iget-object v1, p0, Lg11;->d:Ljava/lang/String;

    iget-object p0, p0, Lg11;->b:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1}, Landroidx/camera/core/impl/CameraPresenceProvider;->k(Ljava/util/ArrayList;Landroidx/lifecycle/Observer;Ljava/lang/String;)V

    return-void
.end method
