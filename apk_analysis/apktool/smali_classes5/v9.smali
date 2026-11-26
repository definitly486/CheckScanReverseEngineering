.class public final Lv9;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# static fields
.field public static final g:Lv9;

.field public static final h:Lv9;


# instance fields
.field public final synthetic f:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lv9;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lv9;-><init>(II)V

    sput-object v0, Lv9;->g:Lv9;

    new-instance v0, Lv9;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lv9;-><init>(II)V

    sput-object v0, Lv9;->h:Lv9;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lv9;->f:I

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lv9;->f:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ly31;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ly31;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lvl2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lvl2;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
