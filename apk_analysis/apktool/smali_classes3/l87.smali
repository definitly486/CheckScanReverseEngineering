.class public final synthetic Ll87;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:Landroidx/navigation/serialization/RouteBuilder;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/serialization/RouteBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll87;->b:Landroidx/navigation/serialization/RouteBuilder;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroidx/navigation/NavType;

    iget-object p0, p0, Ll87;->b:Landroidx/navigation/serialization/RouteBuilder;

    invoke-static {p0, p1, p2, p3}, Landroidx/navigation/serialization/RouteSerializerKt;->d(Landroidx/navigation/serialization/RouteBuilder;ILjava/lang/String;Landroidx/navigation/NavType;)Lj59;

    move-result-object p0

    return-object p0
.end method
