.class public final Ll36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li47;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li47<",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lvq2;


# direct methods
.method public constructor <init>(Lvq2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll36;->a:Lvq2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILxz5;)Le47;
    .locals 6

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    new-instance v1, Lz14$c;

    iget-object v0, p0, Ll36;->a:Lvq2;

    iget-object p0, v0, Lvq2;->d:Ljava/util/ArrayList;

    iget-object v2, v0, Lvq2;->c:Lpr;

    invoke-direct {v1, p1, p0, v2}, Lz14$c;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;Lpr;)V

    sget-object v5, Lvq2;->k:Lvq2$a;

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lvq2;->a(Lz14;IILxz5;Lvq2$b;)Lkj0;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;Lxz5;)Z
    .locals 2

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string p2, "HUAWEI"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "HONOR"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide p0

    const-wide/32 v0, 0x20000000

    cmp-long p0, p0, v0

    if-gtz p0, :cond_2

    :cond_1
    const-string p0, "robolectric"

    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
