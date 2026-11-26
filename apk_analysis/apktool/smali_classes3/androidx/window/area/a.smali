.class public final synthetic Landroidx/window/area/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/reflection/Consumer2;


# instance fields
.field public final synthetic b:Landroidx/window/area/WindowAreaControllerImpl;

.field public final synthetic c:Lug6;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/area/WindowAreaControllerImpl;Lug6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/area/a;->b:Landroidx/window/area/WindowAreaControllerImpl;

    iput-object p2, p0, Landroidx/window/area/a;->c:Lug6;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/window/area/a;->b:Landroidx/window/area/WindowAreaControllerImpl;

    iget-object p0, p0, Landroidx/window/area/a;->c:Lug6;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p0, p1}, Landroidx/window/area/WindowAreaControllerImpl$windowAreaInfos$1;->i(Landroidx/window/area/WindowAreaControllerImpl;Lug6;I)V

    return-void
.end method
