.class public final Lwi9$b;
.super Lwi9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwi9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lwi9$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwi9$b;

    invoke-direct {v0}, Lwi9;-><init>()V

    sput-object v0, Lwi9$b;->a:Lwi9$b;

    return-void
.end method
