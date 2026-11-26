.class public final synthetic Lm99;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Landroidx/camera/camera2/config/UseCaseGraphContext;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Landroidx/camera/camera2/config/UseCaseGraphContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm99;->b:Ljava/util/Map;

    iput-object p2, p0, Lm99;->c:Landroidx/camera/camera2/config/UseCaseGraphContext;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lm99;->b:Ljava/util/Map;

    iget-object p0, p0, Lm99;->c:Landroidx/camera/camera2/config/UseCaseGraphContext;

    invoke-static {v0, p0}, Landroidx/camera/camera2/config/UseCaseGraphContext;->a(Ljava/util/Map;Landroidx/camera/camera2/config/UseCaseGraphContext;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
