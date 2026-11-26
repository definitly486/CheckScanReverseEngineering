.class public final Lxv1$b;
.super Lxv1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxv1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lxv1$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxv1$b;

    invoke-direct {v0}, Lxv1;-><init>()V

    sput-object v0, Lxv1$b;->a:Lxv1$b;

    return-void
.end method
