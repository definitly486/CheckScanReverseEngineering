.class public final synthetic Ly47;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    iput p3, p0, Ly47;->b:I

    iput-object p1, p0, Ly47;->d:Ljava/lang/Object;

    iput p2, p0, Ly47;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Ly47;->b:I

    iget v1, p0, Ly47;->c:I

    iget-object p0, p0, Ly47;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/s85;

    invoke-virtual {p0, v1}, Lyads/s85;->a(I)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/core/content/res/ResourcesCompat$FontCallback;

    invoke-static {p0, v1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->b(Landroidx/core/content/res/ResourcesCompat$FontCallback;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
