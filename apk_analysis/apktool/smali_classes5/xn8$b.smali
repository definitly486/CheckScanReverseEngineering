.class public final Lxn8$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxn8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxn8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lxn8$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxn8$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lxn8$b;->a:Lxn8$b;

    return-void
.end method
