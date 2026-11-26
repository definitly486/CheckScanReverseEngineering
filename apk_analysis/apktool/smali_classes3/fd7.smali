.class public final synthetic Lfd7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lfd7;->b:I

    iput-object p2, p0, Lfd7;->c:Ljava/lang/Object;

    iput-object p3, p0, Lfd7;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lfd7;->b:I

    iget-object v1, p0, Lfd7;->d:Ljava/lang/Object;

    iget-object p0, p0, Lfd7;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/webkit/WebViewOutcomeReceiver;

    check-cast v1, Landroidx/webkit/internal/WebViewStartupResultImpl;

    invoke-static {p0, v1}, Landroidx/webkit/internal/WebViewProviderFactoryAdapter;->d(Landroidx/webkit/WebViewOutcomeReceiver;Landroidx/webkit/internal/WebViewStartupResultImpl;)V

    return-void

    :pswitch_0
    check-cast p0, Lio/appmetrica/analytics/impl/Sb;

    check-cast v1, Lio/appmetrica/analytics/impl/Y;

    invoke-static {p0, v1}, Lio/appmetrica/analytics/impl/Sb;->a(Lio/appmetrica/analytics/impl/Sb;Lio/appmetrica/analytics/impl/Y;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
