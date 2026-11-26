.class public final Llj8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrxa;


# static fields
.field public static final synthetic b:Llj8;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Llj8;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Llj8;->b:Llj8;

    return-void
.end method

.method public static a(Lbx0;Z)I
    .locals 10

    iget v0, p0, Lbx0;->b:I

    iget v1, p0, Lbx0;->c:I

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget-object p0, p0, Lbx0;->a:[[B

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    :goto_2
    if-ge v3, v2, :cond_7

    const/4 v5, -0x1

    move v6, v1

    move v7, v6

    :goto_3
    const/4 v8, 0x5

    if-ge v6, v0, :cond_5

    if-eqz p1, :cond_2

    aget-object v9, p0, v3

    aget-byte v9, v9, v6

    goto :goto_4

    :cond_2
    aget-object v9, p0, v6

    aget-byte v9, v9, v3

    :goto_4
    if-ne v9, v5, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_3
    if-lt v7, v8, :cond_4

    add-int/lit8 v7, v7, -0x2

    add-int/2addr v4, v7

    :cond_4
    const/4 v5, 0x1

    move v7, v5

    move v5, v9

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    if-lt v7, v8, :cond_6

    add-int/lit8 v7, v7, -0x2

    add-int/2addr v7, v4

    move v4, v7

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return v4
.end method


# virtual methods
.method public synthetic zza()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaio;->zza()Z

    move-result p0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method
