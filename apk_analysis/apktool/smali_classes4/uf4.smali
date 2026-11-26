.class public abstract Luf4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luf4$a;
    }
.end annotation


# instance fields
.field public b:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Luf4;->e()Luf4$a;

    move-result-object p0

    return-object p0
.end method

.method public abstract e()Luf4$a;
.end method

.method public abstract h()Ljava/lang/Float;
.end method
