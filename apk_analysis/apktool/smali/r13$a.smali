.class public final Lr13$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lr13;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr13;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr13$a;->a:Lr13;

    return-void
.end method
