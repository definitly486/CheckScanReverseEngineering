.class public final synthetic Lii9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;

.field public final synthetic e:Landroidx/window/area/WindowAreaControllerImpl;


# direct methods
.method public synthetic constructor <init>(IILandroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;Landroidx/window/area/WindowAreaControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lii9;->b:I

    iput p2, p0, Lii9;->c:I

    iput-object p3, p0, Lii9;->d:Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;

    iput-object p4, p0, Lii9;->e:Landroidx/window/area/WindowAreaControllerImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lii9;->d:Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;

    iget-object v1, p0, Lii9;->e:Landroidx/window/area/WindowAreaControllerImpl;

    iget v2, p0, Lii9;->b:I

    iget p0, p0, Lii9;->c:I

    invoke-static {v2, p0, v0, v1}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;->a(IILandroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;Landroidx/window/area/WindowAreaControllerImpl;)V

    return-void
.end method
