.class public final Lkd$a$f$g;
.super Lkd$a$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$a$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# static fields
.field public static final e:Lkd$a$f$g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkd$a$f$g;

    const-string v1, "ShowBottomSuccess"

    invoke-direct {v0, v1}, Lkd$a$f;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lkd$a$f$g;->e:Lkd$a$f$g;

    return-void
.end method
