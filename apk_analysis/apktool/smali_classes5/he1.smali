.class public final Lhe1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# static fields
.field public static final g:Lhe1;


# instance fields
.field public final synthetic f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhe1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lhe1;-><init>(I)V

    sput-object v0, Lhe1;->g:Lhe1;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lhe1;->f:I

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lca0;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lhe1;->f:I

    .line 7
    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget p0, p0, Lhe1;->f:I

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ld41;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lc41;

    invoke-virtual {p1}, Ld41;->a()Lb41;

    move-result-object v2

    invoke-virtual {p1}, Ld41;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ld41;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ld41;->e()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    move v5, p0

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_0
    invoke-virtual {p1}, Ld41;->d()Z

    move-result p0

    xor-int/lit8 v6, p0, 0x1

    invoke-direct/range {v1 .. v6}, Lc41;-><init>(Lb41;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v1

    :pswitch_0
    check-cast p1, Lhc;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lhc;->a()I

    move-result p0

    invoke-virtual {p1}, Lhc;->b()I

    move-result v1

    new-instance v2, Lgc;

    invoke-virtual {p1}, Lhc;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lhc;->a()I

    move-result v4

    invoke-virtual {p1}, Lhc;->b()I

    move-result v5

    invoke-virtual {p1}, Lhc;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    int-to-float v4, p0

    int-to-float v5, v1

    div-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    invoke-static {v4}, Lw65;->b(F)I

    move-result v4

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-direct {v2, v4, v3, p1, v0}, Lgc;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
