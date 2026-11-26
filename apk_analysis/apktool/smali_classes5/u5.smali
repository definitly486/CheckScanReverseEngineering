.class public final Lu5;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# static fields
.field public static final g:Lu5;

.field public static final h:Lu5;


# instance fields
.field public final synthetic f:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lu5;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lu5;-><init>(II)V

    sput-object v0, Lu5;->g:Lu5;

    new-instance v0, Lu5;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lu5;-><init>(II)V

    sput-object v0, Lu5;->h:Lu5;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lu5;->f:I

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lu5;->f:I

    packed-switch p0, :pswitch_data_0

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

    iget-object v0, p0, Lz47;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    iget p0, p0, Lz47;->e:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":Delete Receipt not successful"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance p0, Lbq1;

    invoke-direct {p0, p1}, Lbq1;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p1, Ljp3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljp3;->a()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
