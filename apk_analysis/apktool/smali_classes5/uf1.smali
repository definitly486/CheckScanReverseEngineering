.class public final Luf1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# static fields
.field public static final g:Luf1;

.field public static final h:Luf1;


# instance fields
.field public final synthetic f:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Luf1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luf1;-><init>(II)V

    sput-object v0, Luf1;->g:Luf1;

    new-instance v0, Luf1;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Luf1;-><init>(II)V

    sput-object v0, Luf1;->h:Luf1;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Luf1;->f:I

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Luf1;->f:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lvl2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lvl2;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, La57;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, La57;->a:Lz47;

    invoke-virtual {p0}, Lz47;->o()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Laq1;->b:Laq1;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    iget-object p0, p0, Lz47;->d:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance p0, Lbq1;

    invoke-direct {p0, p1}, Lbq1;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
