.class public final Lco5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrxa;
.implements Lcom/google/android/gms/internal/measurement/zzmt;


# static fields
.field public static final synthetic b:Lco5;

.field public static final synthetic c:Lco5;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lco5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lco5;->b:Lco5;

    new-instance v0, Lco5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lco5;->c:Lco5;

    return-void
.end method

.method public static a(Lorg/jsoup/nodes/p;Lorg/jsoup/nodes/n;)V
    .locals 11

    invoke-virtual {p1}, Lorg/jsoup/nodes/n;->u()Lorg/jsoup/nodes/n;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v2, :cond_9

    iget-object v6, p1, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    invoke-virtual {p1}, Lorg/jsoup/nodes/n;->u()Lorg/jsoup/nodes/n;

    move-result-object v7

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/nodes/n;->D()I

    move-result v8

    goto :goto_1

    :cond_0
    move v8, v1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lorg/jsoup/nodes/r;

    if-ne v9, v10, :cond_1

    move-object v9, p1

    check-cast v9, Lorg/jsoup/nodes/r;

    invoke-virtual {p0, v9, v1, v3}, Lorg/jsoup/nodes/p;->d(Lorg/jsoup/nodes/r;II)V

    goto :goto_2

    :cond_1
    instance-of v9, p1, Lorg/jsoup/nodes/h;

    if-eqz v9, :cond_2

    move-object v9, p1

    check-cast v9, Lorg/jsoup/nodes/h;

    invoke-virtual {p0, v9, v3}, Lorg/jsoup/nodes/p;->a(Lorg/jsoup/nodes/h;I)V

    goto :goto_2

    :cond_2
    move-object v9, p1

    check-cast v9, Lorg/jsoup/nodes/m;

    invoke-virtual {p0, v9, v3}, Lorg/jsoup/nodes/p;->b(Lorg/jsoup/nodes/m;I)V

    :goto_2
    if-eqz v6, :cond_8

    iget-object v9, p1, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    if-eq v9, v6, :cond_8

    iget-object p1, v6, Lorg/jsoup/nodes/h;->f:Lorg/jsoup/nodes/h$a;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-ge v8, p1, :cond_3

    invoke-virtual {v6}, Lorg/jsoup/nodes/h;->p()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/n;

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-nez v3, :cond_4

    move-object v8, v0

    goto :goto_4

    :cond_4
    move-object v8, v7

    :goto_4
    if-eqz p1, :cond_5

    if-eq p1, v8, :cond_5

    goto :goto_5

    :cond_5
    if-nez v3, :cond_6

    goto :goto_8

    :cond_6
    if-eqz v7, :cond_7

    iget-object p1, v7, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    if-ne p1, v6, :cond_7

    move-object p1, v7

    goto :goto_0

    :cond_7
    add-int/lit8 v3, v3, -0x1

    move v2, v4

    move-object p1, v6

    goto :goto_0

    :cond_8
    :goto_5
    move v2, v5

    goto :goto_0

    :cond_9
    if-ne v2, v5, :cond_a

    invoke-virtual {p1}, Lorg/jsoup/nodes/n;->j()I

    move-result v2

    if-lez v2, :cond_a

    invoke-virtual {p1}, Lorg/jsoup/nodes/n;->p()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/n;

    add-int/lit8 v3, v3, 0x1

    :goto_6
    move v2, v1

    goto :goto_0

    :cond_a
    instance-of v2, p1, Lorg/jsoup/nodes/h;

    if-eqz v2, :cond_b

    move-object v2, p1

    check-cast v2, Lorg/jsoup/nodes/h;

    invoke-virtual {p0, v2, v3}, Lorg/jsoup/nodes/p;->c(Lorg/jsoup/nodes/h;I)V

    :cond_b
    invoke-virtual {p1}, Lorg/jsoup/nodes/n;->u()Lorg/jsoup/nodes/n;

    move-result-object v2

    if-nez v3, :cond_e

    if-eqz v2, :cond_d

    if-ne v2, v0, :cond_c

    goto :goto_8

    :cond_c
    :goto_7
    move-object p1, v2

    goto :goto_6

    :cond_d
    :goto_8
    return-void

    :cond_e
    if-eqz v2, :cond_f

    goto :goto_7

    :cond_f
    iget-object p1, p1, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    add-int/lit8 v3, v3, -0x1

    move v2, v4

    goto/16 :goto_0
.end method


# virtual methods
.method public synthetic zza()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzail;->zzb()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
