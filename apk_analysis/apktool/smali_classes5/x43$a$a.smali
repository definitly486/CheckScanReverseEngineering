.class public final Lx43$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx43$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx43$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lx43$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx43$a$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lx43$a$a;->a:Lx43$a$a;

    return-void
.end method
