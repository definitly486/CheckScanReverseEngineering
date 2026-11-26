.class public final Landroidx/core/os/ParcelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final use(Landroid/os/Parcel;Lnl3;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "Lnl3<",
            "-",
            "Landroid/os/Parcel;",
            "+TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method
