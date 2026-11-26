.class public final Lxv1$a;
.super Lxv1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxv1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lxv1$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxv1$a;

    invoke-direct {v0}, Lxv1;-><init>()V

    sput-object v0, Lxv1$a;->a:Lxv1$a;

    return-void
.end method
