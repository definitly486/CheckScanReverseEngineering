.class public final synthetic Lzg9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Landroidx/webkit/WebViewStartUpConfig;


# direct methods
.method public synthetic constructor <init>(Landroidx/webkit/WebViewStartUpConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzg9;->b:Landroidx/webkit/WebViewStartUpConfig;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lzg9;->b:Landroidx/webkit/WebViewStartUpConfig;

    check-cast p1, Ljava/util/function/BiConsumer;

    invoke-virtual {p0, p1}, Landroidx/webkit/WebViewStartUpConfig;->accept(Ljava/util/function/BiConsumer;)V

    return-void
.end method
