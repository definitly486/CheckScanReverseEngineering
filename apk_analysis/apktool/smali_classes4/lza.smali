.class public final synthetic Llza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic c:Llza;

.field public static final synthetic d:Llza;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Llza;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llza;-><init>(I)V

    sput-object v0, Llza;->c:Llza;

    new-instance v0, Llza;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Llza;-><init>(I)V

    sput-object v0, Llza;->d:Llza;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Llza;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic execute(Ljava/lang/Runnable;)V
    .locals 0

    iget p0, p0, Llza;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
